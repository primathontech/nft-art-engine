cd "/Users/mahaveerchouhan/Learner/crypto/solana-nft-course/art-engine/layers/Top"
pwd
for d in */ ; do
    [ -L "${d%/}" ] && continue
    cd "$pwd$d"
    
    ls -la
    for file in *.png; 
    do 
        filename="${file%.*}"
        echo $file
        mv "$file" "$filename#10.png"; 
    done
    cd -
done