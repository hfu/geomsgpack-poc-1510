task :default do
  sh "wget -O experimental_fgd/mokuroku.csv.gz http://cyberjapandata.gsi.go.jp/xyz/experimental_fgd/mokuroku.csv.gz" unless File.exist?('experimental_fgd/mokuroku.csv.gz')
  sh "wget -O experimental_fgd/qdltc.rb https://raw.githubusercontent.com/gsi-cyberjapan/qdltc/gh-pages/qdltc.rb" unless File.exist?('experimental_fgd/qdltc.rb')
  sh "ruby msg.rb"
end
