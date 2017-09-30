classdef a3block
    properties
        BlockType
    end
    methods
        function obj=a3block(name)
            if nargin > 0
                if ischar(name)
                    obj.BlockType=name;
                else
                    error('a3block name has to be a character array')
                end
            else
                error('Not enough input arguments to create a3block Object')
            end
        end
    end
end