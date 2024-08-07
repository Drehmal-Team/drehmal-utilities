# EDATA/GET_PLAYER_USERNAMES
#
# Gets every valid username in the list of scoreholders. Something being a valid username does not mean it's an actual player, but can also mean someone was irresponsible with their fake players.
#
# PERFORMANCE: Horrible
#   Runs in a single tick and creates a massive lag spike if the scoreboard file is large. Do not run this outside of, say, load functions.

execute if score #GETTING_SCORES# ntils.z.global matches 1 run return fail
function ntils:api/edata/get_all_scores {Args:{Max_Length:16,Min_Length:3,Allowed_Chars:[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,"1","2","3","4","5","6","7","8","9","0","-","_"]}}