using DataFrames
using CSV
using FastaIO
using FASTX
#using BioSequences
GAPIT = CSV.read("GAPIT.Result.csv", DataFrame)
n = length(GAPIT[3])
#=
for i in eachrow(GAPIT)
  #j = i[2]
  j = string("Chromosome ",  i[2])
  k = (i[3]-50:i[3]+50)
  println(k)
  #if isequal(k, findall(k,description))
    #Read the fasta file from index position [k-50:k+50]
  #end
  
end


for i in (GAPIT[2])
  println(Base.ViewIndex(i))
  #for j in 1:GAPIT[3]
  string("Chromosome ",  i)

  if string("Chromosome ", i) == description()
  #end
  in(description()).string("Chromosome ", i) = 1

end


#=
if condition         
   # Statements to execute if
   # condition is true
end
=#

#=
if (condition)
    # Executes this block if
    # condition is true
else
    # Executes this block if
    # condition is false
end
=#


close(GAPIT)
=#
searchdir(path, key) = filter(x -> occursin(key, x), readdir(path))

in_dir = "C:\\Users\\Shadr\\Documents\\ReferenceGenome\\"
outfile = open("fasta_headers.csv", "w")
for i in eachrow(GAPIT)
  j = string("Chromosome ",  i[2])
  k = (i[3]-50:i[3]+50)
end
for file in searchdir(in_dir, ".fasta")
reader = open(FASTA.Reader, string(in_dir, file))
        for seq in reader
              identifier = FASTA.identifier(seq)
              description = FASTA.description(seq)
              candidate = FASTA.sequence(seq)[k]#[k]#Read the fasta file from index position [k-50:k+50]                             
              write(outfile, string(file, ";", identifier, ";", description, ";", candidate, "\n"))
        end
        close(reader)
      end
      close(outfile)


