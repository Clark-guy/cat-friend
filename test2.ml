#load "unix.cma"
;;

while true; do
        Printf.printf "hello\n";
        Unix.sleep(1);
        flush stdout;
done;
;;

let rec dance x =
        Printf.printf "hello\n";
        Unix.sleep(1);
        flush stdout;
        dance 3;;

dance 3;
