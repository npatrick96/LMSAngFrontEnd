import { Branch } from './branch';
import { Borrower } from './borrower';
import { Book } from './book';

export class BookLoan {

  book: Book;
  branch: Branch;
  borrower: Borrower;
  dateOut: string;
  dueDate: string;
  dateIn: string;
  constructor() {
  }
}