import { LunchRoulettePage } from './app.po';

describe('lunch-roulette App', () => {
  let page: LunchRoulettePage;

  beforeEach(() => {
    page = new LunchRoulettePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
