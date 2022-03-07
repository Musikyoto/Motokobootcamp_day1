import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
   stable var currentValue : Nat = 0;

// Challenge 1
  public func add(n : Nat, m : Nat) : async Nat {
    
        return (n + m);
};
// Challenge 2
  public func square(n : Nat) : async Nat {
    
        return (n * n);
};
// Challenge 3
public func days_to_second(n : Nat) : async Nat {
    
        return (n * 86400);
};
// Challenge 4a
public query func get() : async Nat {
    currentValue
  };
// Challenge 4b
public func increment_counter(n : Nat) : async () {
    currentValue += n;
  };
// Challenge 4c
public func clear_counter() : async () {
    currentValue := 0;
  };
// Challenge 5
public func divide(n : Nat, m : Nat) : async Bool {
    if(n % m == 0 ) {
          return true;
              } else {
                    return false;
                    };
};
// Challenge 6
public func is_even(n : Nat) : async Bool {
    if(n % 2 == 0 ) {
          return true;
              } else {
                    return false;
                    }; 
};
//Challenge 7
    public func sum_of_array(n : [Nat]) : async Nat {
        var sum : Nat = 0;
        for (value in n.vals()){
            sum+=value;
        };
        return sum;
    };

 //Challenge 8
    public func maximum(n : [Nat]) : async Nat {
        var max : Nat = 0;
        for (value in n.vals()){
            if(value > max){
                max := value;
            };
        };
        return max;
    };

    //Challenge 9
    public func remove_from_array(arr : [Nat], n : Nat) : async [Nat] {
        return Array.filter<Nat>(arr, func (value : Nat) { return Nat.notEqual(value : Nat, n : Nat)});
    };

    //Challenge 10
    public func selection_sort(arr : [Nat]) : async [Nat] {
        return Array.sort<Nat>(arr,Nat.compare);
    };
};