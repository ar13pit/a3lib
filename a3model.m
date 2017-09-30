classdef a3model
    %A3MODEL A Class definition to programatically create and simulate Simulink models
    %   a3model returns 1 if S is an a3block Object and 0 otherwise.

    properties
        ModelName
        BlockObjects
    end
    methods
        function obj = a3model(name,a3blockObject,varargin)
            if nargin > 0
                if ischar(name)
                    obj.ModelName = name;
                else
                    error('ModelName must be string')
                end
                if isa3block(a3blockObject)
                    obj.BlockObjects=a3blockObject;
                end
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
        function simulate()
            % Add code to run simulation
        end
        
            
    end
end