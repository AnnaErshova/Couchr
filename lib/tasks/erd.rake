
desc 'Generate Entity Relationship Diagram'
namespace :erd do
  task :generate_erd_png do
    system "erd --inheritance --filetype=dot --direct --attributes=foreign_keys,content"
    system "dot -Tpng erd.dot > erd.png"
    File.delete('erd.dot')
  end

  task :generate_erd_pdf do
    system "erd --inheritance --direct --attributes=foreign_keys,content"
  end
end

