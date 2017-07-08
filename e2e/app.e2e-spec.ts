import { LMSAngFrontEndPage } from './app.po';

describe('lmsang-front-end App', () => {
  let page: LMSAngFrontEndPage;

  beforeEach(() => {
    page = new LMSAngFrontEndPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
