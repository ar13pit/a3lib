function out = isa3blockObject(obj)
%isa3blockObject Determine if the input is an a3block Object
%   isa3blockObject(S) returns 1 if S is an a3block Object and 0 otherwise.
    if class(obj)=='a3block'
        out=true;
    else
        out=false;
    end

end

