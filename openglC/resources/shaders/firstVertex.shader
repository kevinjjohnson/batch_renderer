#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoord;
layout (location = 2) in float aTex;

out vec2 texCoord;
out float texID;

uniform mat4 projection;

void main(){
	gl_Position = projection * vec4(aPos.x, aPos.y, 0.0, 1.0);
	texCoord = aTexCoord;
	texID = aTex;
}