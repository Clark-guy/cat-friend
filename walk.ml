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


let rec catWalk firstCat secondCat thirdCat =
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
        
        if (Random.int 3 !=1) then
            catWalk firstCat secondCat thirdCat;
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

let rec catSleep c3 c4 =
        Sys.command "clear";
        print_endline c3; 
        flush stdout;
        Unix.sleep(1);

        Sys.command "clear";
        print_endline c4; 
        flush stdout;
        Unix.sleep(1);

        Sys.command "clear";
        print_endline c3; 
        flush stdout;
        Unix.sleep(1);

        Sys.command "clear";
        print_endline c4; 
        flush stdout;
        Unix.sleep(1);

        if (Random.int 3 != 1) then catSleep c3 c4;
;;

let catStand cat =
        Sys.command "clear";
        print_endline cat; 
        flush stdout;
        Unix.sleep(1);
;;

Printf.printf "\x1b[?25l";

let blink_files = ["cat.txt"; "cat0.txt"] in
let walk_files = ["cat1.txt"; "cat2.txt"; "cat3.txt"] in
let look_left_files = ["cat4.txt"; "cat5.txt"] in


let firstCat = fileToString "cats/cat1.txt" in
let secondCat = fileToString "cats/cat2.txt" in
let thirdCat= fileToString "cats/cat3.txt" in
let fourthCat= fileToString "cats/cat.txt" in
let fifthCat= fileToString "cats/cat0.txt" in
let sixthCat= fileToString "cats/cat4.txt" in
let seventhCat = fileToString "cats/cat5.txt" in
let eighthCat= fileToString "cats/cat6.txt" in
let ninthCat = fileToString "cats/cat7.txt" in
while true; do
        (**)
        Random.self_init ();
        match Random.int 5 with
        0 -> catWalk firstCat secondCat thirdCat;
        | 1 -> catBlink fifthCat fourthCat;
            catSleep eighthCat ninthCat;
        | 2 -> catStand firstCat;
        | _ -> catBlink fourthCat fifthCat;
            if (Random.int 2 == 1) then
            catBlink sixthCat seventhCat;
done;
