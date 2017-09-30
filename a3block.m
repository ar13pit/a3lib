classdef a3block
    %A3BLOCK Class definition of a3block Objects used to create a3model.
    %   a3block returns 1 if S is an a3block Object and 0 otherwise.

    % Implement this as node of a directed graph
    properties
        Name
        BlockType
    end
    methods
        function obj=a3block(blockname,blocktype)
            if nargin > 0
                if ischar(blockname)
                    obj.Name=blockname;
                else
                    error('a3block Name has to be a character array')
                end
                if ischar(blocktype)
                    obj.BlockType=blocktype;
                else
                    error('a3block BlockType has to be a character array')
                end
                
            else
                error('Not enough input arguments to create a3block Object')
            end
        end
    end
end