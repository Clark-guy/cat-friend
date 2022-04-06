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

let catWalk firstCat secondCat thirdCat =
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

        Sys.command "clear";
        print_endline firstCat; 
        flush stdout;
        Unix.sleepf(0.5);

;;

let catBlink firstCat secondCat = 
        Sys.command "clear";
        print_endline firstCat; 
        flush stdout;
        Unix.sleepf(0.5);

        Sys.command "clear";
        print_endline secondCat; 
        flush stdout;
        Unix.sleepf(0.2);

        Sys.command "clear";
        print_endline firstCat; 
        flush stdout;
        Unix.sleep(2);

        Sys.command "clear";
        print_endline secondCat; 
        flush stdout;
        Unix.sleepf(0.2);

        Sys.command "clear";
        print_endline firstCat; 
        flush stdout;
        Unix.sleep(2);
;;

let catStand cat =
        Sys.command "clear";
        print_endline cat; 
        flush stdout;
        Unix.sleep(1);
;;

let blink_files = ["cat.txt"; "cat0.txt"] in
let walk_files = ["cat1.txt"; "cat2.txt"; "cat3.txt"] in


let firstCat = fileToString "cats/cat1.txt" in
let secondCat = fileToString "cats/cat2.txt" in
let thirdCat= fileToString "cats/cat3.txt" in
let fourthCat= fileToString "cats/cat.txt" in
let fifthCat= fileToString "cats/cat0.txt" in
while true; do

        Random.self_init ();
        match Random.int 3 with
        0 -> catWalk firstCat secondCat thirdCat;
        | 1 -> catBlink fourthCat fifthCat;
        | 2 -> catStand firstCat;
done;
