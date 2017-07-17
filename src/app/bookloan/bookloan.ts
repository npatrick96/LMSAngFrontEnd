import { Branch } from '../branch/branch';
import { Borrower } from '../borrower/borrower';
import { Book } from '../book/book';

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