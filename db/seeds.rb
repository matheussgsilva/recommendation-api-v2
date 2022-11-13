Recommendation.destroy_all
Category.destroy_all

filme = Category.find_or_create_by(name: 'Filme')
jogo = Category.find_or_create_by(name: 'Jogo')
livro = Category.find_or_create_by(name: 'Livro')
serie = Category.find_or_create_by(name: 'Série')

serie.recommendations.create(
  title: "Prison Break",
)