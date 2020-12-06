-- Forestier Quentin, Herzig Melvyn 04/12/2020
module Interpreter
where
import Parser
import Lexer

type Var  = (String, Int)
type Func = (String, [String], Exp)
type Env  = ([Var], [Func]) 

-- Evaluation des expressions
eval (Bin c x y) env 
 | c == '+' = (eval x env) + (eval y env)
 | c == '-' = (eval x env) - (eval y env)
 | c == '*' = (eval x env) * (eval y env)
 | c == '/' = div (eval x env) (eval y env)
 | c == '<' = if (eval x env) < (eval y env) then 1 else 0

eval (Let name exp1 exp2) env@(vars,funcs) = eval exp2 ((name, eval exp1 env):vars, funcs)  

eval (Cst n) _ = n

eval (If cond x y) env = 
    if (eval cond env) > 0  then eval x env
                            else eval y env 

eval (Una c exp) env
 | c == '-' = (-(eval exp env))
 | c == '+' = eval exp env
 | c == '#' = 10 * (eval exp env)

eval (Var name) env = value name env

eval (FApp func xs) env = 
    eval x $ expand env (if length xs /= length vars then error "Invalid arg count" else vars) xs 
    where (vars, x) = extract func env

-- Ajoute la fonction à l'environnement
addFunction (FDef name args exp) = (name,args,exp)

-- Lecture d'une ligne
readProg (ExprSimple exp) env@(vars, funcs) = let val = eval exp env in (("a",val):vars, funcs)
readProg (DefSimple fdef) (vars, funcs) = let val = addFunction fdef in (vars, val:funcs)


-- Expansion de l'environnement
expand env [] [] = env
expand env (v:vs) (x:xs) = ((v, eval x env):vars, funcs)
 where (vars, funcs) = expand env vs xs

-- Récupération d'une variable
value name (vars,_) = value' name vars
 where 
     value' name [] = error $ "Out of scope variable " ++ name
     value' name ((var,val):vars) =
        if var == name then val else value' name vars

-- Récuprération d'une fonction 
extract name (_,funcs) = extract' name funcs
 where
    extract' name [] = error $ "Undefined function : " ++ name
    extract' name ((func,vars,body):funcs) =
        if func == name then (vars,body) else extract' name funcs

getFName (name,_,_) = name
getResult (_, num) = num

repl funcs = 
    do
        putStr "SPL>"
        line <- getLine
        let tokens = lexer line
        putStrLn $ show tokens
        let ast = parser tokens
        putStrLn $ show ast
        let tempEnv = readProg ast ([],funcs)
        if(null $ fst tempEnv) then putStrLn $ getFName $ (snd tempEnv) !! 0 
                               else putStrLn $ show $ getResult $ (fst tempEnv) !! 0 
        repl (if(null $ fst tempEnv) then ((snd tempEnv) !! 0):funcs else funcs)

launchRepl = repl [("Pred", ["n"],(Bin '-' (Var "n") (Cst 1))),
                   ("Fact", ["n"],(If (Bin '<' (Var "n") (Cst 1)) (Cst 1) (Bin '*' (Var "n") (FApp "Fact" [FApp "Pred" [Var "n"]])))),
                   ("SphericINTSurface", ["radius"], (Bin '*' (Bin '*' (Bin '*' (Cst 4) (FApp "PI" [])) (Var "radius")) (Var "radius"))),
                   ("Surface", ["x","y"], (If (Bin '<' (Cst 0) (Var "x")) (If (Bin '<' (Cst 0) (Var "y")) (Bin '*' (Var "x") (Var "y")) (Una '-' (Cst 1))) (Una '-' (Cst 1))))]