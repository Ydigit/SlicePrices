open Scanf

open Array

let null = 
        0

let maximize_profit n m price_table =
  let memory = make (n+1) null in
  
    let memory =
        List.fold_left
            (fun memo (size, price) ->
                for i = size to n do
                    memo.(i) <- max memo.(i) (price + memo.(i-size))
                done;
            memo
        ) memory price_table
    in
  memory.(n)


let () =
  let n, m = scanf "%d %d\n" (fun x y -> x, y) in
        
    let price_table = make m (null, null) in

  
let rec price_size i =
    if i < m then
        let size, price = scanf "%d %d\n" (fun x y -> x, y) in
            price_table.(i) <- (size, price);
                price_size (i + 1) in
                    price_size null;
  
let price_table = to_list price_table in
    let price_table = List.sort (fun (s1, _) (s2, _) -> compare s2 s1) price_table in
        let max_profit = maximize_profit n m price_table in
            
print_int max_profit;
print_newline ()
