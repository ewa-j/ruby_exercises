require "library"

describe Library do
  it "can find a specific book" do
    # Arrange
    library = Library.new

    # Act
    library.find_book("Eloquent JavaScript")

    # Assert
    expect(library.find_book("Eloquent JavaScript")).to eq({ title: "Eloquent JavaScript", author: "Marijn Haverbeke", subject: "JS" })
  end

  it "can add a new book" do
    # Arrange
    library = Library.new

    # Act
    library.add_book({ title: "Python: The Complete Reference", author: "Martin Brown", subject: "Python" })

    # Assert
    expect(library.list_books).to eq([
      { title: "POODR", author: "Sandi Metz", subject: "OOP" },
      { title: "Learn Ruby The Hard Way", author: "Zed Shaw", subject: "Ruby" },
      { title: "Eloquent JavaScript", author: "Marijn Haverbeke", subject: "JS" },
      { title: "The Well Grounded Rubyist", author: "Sandi Metz", subject: "Ruby" },
      { title: "Python: The Complete Reference", author: "Martin Brown", subject: "Python" },
    ])
  end

  it "can remove a book" do
    # Arrange
    library = Library.new

    # Act
    library.remove_book("Python: The Complete Reference")

    # Assert
    expect(library.list_books).to eq([
      { title: "POODR", author: "Sandi Metz", subject: "OOP" },
      { title: "Learn Ruby The Hard Way", author: "Zed Shaw", subject: "Ruby" },
      { title: "Eloquent JavaScript", author: "Marijn Haverbeke", subject: "JS" },
      { title: "The Well Grounded Rubyist", author: "Sandi Metz", subject: "Ruby" },
    ])
  end

  it "can list all the books on a specific subject" do
    # Arrange
    library = Library.new

    # Act
    library.all_books_by_subject("Ruby")

    # Assert
    expect(library.all_books_by_subject("Ruby")).to eq([
      { title: "Learn Ruby The Hard Way", author: "Zed Shaw", subject: "Ruby" },
      { title: "The Well Grounded Rubyist", author: "Sandi Metz", subject: "Ruby" },
    ])
  end
end
