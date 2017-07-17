import { Branch } from '../branch/branch';
import { Borrower } from '../borrower/borrower';

export class BookCopy {
  branch: Branch;
  borrower: Borrower;
  noOfCopies: number;
  constructor() {
  }
}