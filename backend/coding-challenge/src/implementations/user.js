export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        library.removeBook(book);
        this.books.push(book);
    }

    hasBook(book) {
        return this.books.some(b => b.name === book.name);
    }

    return(book, library) {
        if (!this.hasBook(book)) return false;
        this.books = this.books.filter(b => b !== book);
        library.addBook(book);
        return true;
    }

    getBookNames() {
        return this.books.map(book => book.name);
    }
}
