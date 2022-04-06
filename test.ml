#load "unix.cma"

let mainTwo = function x ->
        Printf.printf "\x1b[32;41m%s" "chill";
        Printf.printf "\x1b[0m\n"

(*define a function to take a filename, return string in that filename*)

let fileToString fname =
        let channel = open_in fname in
        let newString = really_input_string channel (in_channel_length channel) in
        close_in channel;
        newString;
;;



let cat_files = ["cat.txt"; "cat0.txt"];;

let firstCat = fileToString "cats/cat1.txt" in
let secondCat = fileToString "cats/cat2.txt" in
let thirdCat= fileToString "cats/cat3.txt" in
while true; do
        Sys.command "clear";
        print_endline firstCat; 
        flush stdout;
        Unix.sleepf(0.5);

        Sys.command "clear";
        print_endline secondCat; 
        flush stdout;
        Unix.sleepf(0.5);

        Sys.command "clear";
        print_endline firstCat; 
        flush stdout;
        Unix.sleepf(0.5);

        Sys.command "clear";
        print_endline thirdCat; 
        flush stdout;
        Unix.sleepf(0.5);
done;


