classdef a3model
    %A3MODEL A Class definition to programatically create and simulate Simulink models
    %   a3model returns 1 if S is an a3block Object and 0 otherwise.

% Implement this as a directed graph. To get the right postion of the
% blocks, calculate the longest connection between the input and output
% nodes such that each node occurs only once. Place the nodes of this
% connection on one line. Place the nodes that are in the same direction as the
% longest connection above it and the ones in a direction opposite below
% it. (This represents feedforward and feedback)

% The search for the longest connection starts from a node that has a
% previous node value as null and ends at a node which has the next node
% value as null. (Representing Input and Output) (Disturbances and some
% other nodes may satisfy this condition but the path will be longest only
% in the case of the initial input and the final output

    properties
        ModelName
        BlockObjects
    end
    methods
        function obj = a3model(name,a3blockObject,varargin)
            if nargin > 0
                if ischar(name)
                    obj.ModelName = name;
                    new_system(obj.ModelName);
                else
                    error('ModelName must be string')
                end
                if isa3block(a3blockObject)
                    obj.BlockObjects=a3blockObject;
                end
            else
                error('Not enough input arguments to create a3model object')
            end
        end
%         function r = roundOff(obj)
%             r = round([obj.Value],2);
%         end
%         function r = multiplyBy(obj,n)
%             r = [obj.Value] * n;
%         end
%         function r = plus(o1,o2)
%             r = o1.Value + o2.Value;
%         end
        function insert_block(a3blockObject)
            % Add the block to the linked list
        end
        function simOut=simulate()
            % Add code to run simulation and return a a3output Object
        end
        
            
    end
end