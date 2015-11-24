//
//  QuizViewController.m
//  Quiz
//
//  Created by 暖 澤田 on 12/01/07.
//  Copyright (c) 2012年 慶應義塾大学. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController {
    
    //問題（Quizクラスのインスタンス）を格納する配列
    NSMutableArray *problemSet;
    
    //出題する問題数
    int totalProblems;
    //現在の進捗（出題済み問題数）を記録
    int currentProblem;
    //正答数
    int correctAnswers;
    
    //問題文を表示するText View
    IBOutlet UITextView *problemText;
    
    // 選択肢を表示するLabel
    IBOutlet UILabel *lbChoise1;
    IBOutlet UILabel *lbChoise2;
    IBOutlet UILabel *lbChoise3;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 問題を格納する可変配列のproblemSetを初期化
    problemSet = [[NSMutableArray alloc] init];   
    
    
    
    
    // 例　[self addProblem:@"1月1日は何の日？" c1:@"クリスマス" c2:@"元旦" c3:@"大晦日" ans:2];
    // ======================     ここから下に命令を追加してください。   ==================
    [self addProblem:@"『あり』のスペルは？" c1:@"aunt" c2:@"aut" c3:@"ant" ans:3];  //1
    
    
    [self addProblem:@"『事故』のスペルは？" c1:@"acsident" c2:@"accident" c3:@"actident" ans:2];  //2
    
    [self addProblem:@"『コンパス』のスペルは？" c1:@"compas" c2:@"conpus" c3:@"compass" ans:3];  //3
    
    [self addProblem:@"『工場』のスペルは？" c1:@"factry" c2:@"factory" c3:@"faction" ans:2];  //4
    
    [self addProblem:@"『〜を推測する』？" c1:@"guess" c2:@"gyass" c3:@"gust" ans:1];  //5
    
    [self addProblem:@"『機械』のスペルは？" c1:@"masine" c2:@"mascen" c3:@"machine" ans:3];  //6
    
    [self addProblem:@"『大統領』のスペルは？" c1:@"president" c2:@"topest" c3:@"regident" ans:1];  //7
    
    [self addProblem:@"『物音』のスペルは？" c1:@"noise" c2:@"noicy" c3:@"nounsr" ans:1];  //8
    
    [self addProblem:@"『安全な』のスペルは？" c1:@"safe" c2:@"cafe" c3:@"sefe" ans:1];  //9
    
    [self addProblem:@"『秘密』のスペルは？" c1:@"sercret" c2:@"secret" c3:@"sickret" ans:2];  //10
    
    [self addProblem:@"『屋根』のスペルは？" c1:@"roof" c2:@"roup" c3:@"roop" ans:1];  //11
    
    [self addProblem:@"『故障』のスペルは？" c1:@"bug" c2:@"trouble" c3:@"fix" ans:2];  //12
    
    [self addProblem:@"『勝利者』のスペルは？" c1:@"wiinere" c2:@"winmer" c3:@"winner" ans:3];  //13
    
    [self addProblem:@"『〜を包む』のスペルは？" c1:@"rup" c2:@"rap" c3:@"wrap" ans:3];  //14
    
    [self addProblem:@"『青春時代』のスペルは？" c1:@"youth" c2:@"yaufe" c3:@"youfe" ans:1];  //15
    
    [self addProblem:@"『種』のスペルは？" c1:@"sprout" c2:@"seed" c3:@"swit" ans:2];  //16
    
    [self addProblem:@"『乗客』のスペルは？" c1:@"passengyar" c2:@"passendhour" c3:@"passenger" ans:3];  //17
    
    [self addProblem:@"『損失』のスペルは？" c1:@"less" c2:@"lost" c3:@"loss" ans:3];  //18
    
    [self addProblem:@"『起こる』のスペルは？" c1:@"happen" c2:@"happun" c3:@"happene" ans:1];  //19
    
    [self addProblem:@"『年配の』のスペルは？" c1:@"eledary" c2:@"elderly" c3:@"eldaly" ans:2];  //20
    [self addProblem:@"『注意深く』のスペルは？" c1:@"carefully" c2:@"carufully" c3:@"carefuly" ans:1];  //21
    [self addProblem:@"『ラジオ』のスペルは？" c1:@"ragio" c2:@"redio" c3:@"radio" ans:3];  //22
    [self addProblem:@"『実感する』のスペルは？" c1:@"really" c2:@"realize" c3:@"ralize" ans:2];  //23
    [self addProblem:@"『情報』のスペルは？" c1:@"inform" c2:@"informate" c3:@"information" ans:3];  //24
    [self addProblem:@"『理由』のスペルは？" c1:@"reason" c2:@"rease" c3:@"riason" ans:1];  //25
    [self addProblem:@"『社会』のスペルは？" c1:@"social" c2:@"society" c3:@"socety" ans:2];  //26
    [self addProblem:@"『excuse』の意味は？" c1:@"〜を許す" c2:@"〜を表現する" c3:@"〜を除いて" ans:1];  //27
    [self addProblem:@"『cheer』の意味は？" c1:@"〜を大事にする" c2:@"〜を元気づける" c3:@"〜に挑戦する" ans:2];  //28
    [self addProblem:@"『along』の意味は？" c1:@"〜に沿って" c2:@"〜もまた" c3:@"声を出して" ans:1];  //29
    [self addProblem:@"『traffic』の意味は？" c1:@"三角形" c2:@"貿易" c3:@"交通" ans:3];  //30
    [self addProblem:@"『moment』の意味は？" c1:@"瞬間" c2:@"動き" c3:@"模型" ans:1];  //31
    [self addProblem:@"『fact』の意味は？" c1:@"真実" c2:@"別れ" c3:@"農場" ans:1];  //32
    [self addProblem:@"『ereaser』の意味は？" c1:@"平等な" c2:@"消しゴム" c3:@"電気" ans:2
     ];  //33
    [self addProblem:@"『former』の意味は？" c1:@"以前の" c2:@"遠くに" c3:@"親切な行為" ans:1];  //34
    [self addProblem:@"『proud』の意味は？" c1:@"ことわざ" c2:@"誇りに思う" c3:@"前進" ans:2];  //35
    
    

    // ======================     ここから上に命令を追加してください。   ==================
    
    
    //クイズ問題をランダムに並び替え（シャッフル）
    // シャッフルする場合はコメント解除('//'を先頭から削除)してください
    [self shuffleProblemSet];
    
    
    
    
    //現在の問題番号と正答数を0にする
    currentProblem = 0;
    correctAnswers = 0;
    
    //　problemSetの最初の要素の問題文をクイズ画面にセット
    if(totalProblems > 0){
        problemText.text = [[problemSet objectAtIndex:currentProblem] getQ];  
        lbChoise1.text = [[problemSet objectAtIndex:currentProblem] getChoice:1];
        lbChoise2.text = [[problemSet objectAtIndex:currentProblem] getChoice:2];
        lbChoise3.text = [[problemSet objectAtIndex:currentProblem] getChoice:3];
    }
}

// 問題を追加する
- (void)addProblem : (NSString *)q c1:(NSString *)c1 c2:(NSString *)c2 c3:(NSString *)c3 ans:(int)a{

    // 新しくProblemクラスのインスタンスを生成・初期化し、問題文と答えを格納
    Problem *p = [Problem initProblem];
    [p setData:q c1:c1 c2:c2 c3:c3 ansNo:a];
        
    // 提示問題数をカウントアップ
    totalProblems++;
    
    // 新たに生成したProblemクラスのインスタンスをproblemSetに追加
    [problemSet addObject:p];

}

//問題文をシャッフル
- (void)shuffleProblemSet {
    
    //problemSetに格納された全問題の数を取得
    int totalQuestions = [problemSet count];
    
    //Fisher-Yatesアルゴリズム用のカウンターを取得
    int i = totalQuestions;
    
    //Fisher-Yatesアルゴリズムによって配列の要素をシャッフル
    while (i > 0) {
        
        //乱数を発生
        srand((unsigned int)time(0));
        int j = rand() % i;
        
        //要素を並び替え
        [problemSet exchangeObjectAtIndex:(i-1) withObjectAtIndex:j];
        
        //カウンターを減少させる
        i = i - 1;
    }
    
}

// 選択肢1のボタンが押された時
- (IBAction)answerIsChoise1:(id)sender {
    // 答えが合っているか（答えが選択肢1か）チェック
    if ([[problemSet objectAtIndex:currentProblem] getA] == 1) {
        //　正解数のカウントを増やす
        correctAnswers++;
    }
    // 次の問題へ
    [self nextProblem];   
}

// 選択肢2のボタンが押された時
- (IBAction)answerIsChoise2:(id)sender {
    // 答えが合っているか（答えが選択肢2か）チェック
    if ([[problemSet objectAtIndex:currentProblem] getA] == 2) {
        //　正解数のカウントを増やす
        correctAnswers++;
    }
    // 次の問題へ
    [self nextProblem];   
}

// 選択肢3のボタンが押された時
- (IBAction)answerIsChoise3:(id)sender {
    // 答えが合っているか（答えが選択肢3か）チェック
    if ([[problemSet objectAtIndex:currentProblem] getA] == 3) {
        //　正解数のカウントを増やす
        correctAnswers++;
    }
    // 次の問題へ
    [self nextProblem];   
}


//次の問題提示 or 全問時終わっていたら結果表画面へ
- (void)nextProblem {
    
    //currentProblemを繰り上げ
    currentProblem++;
    
    //これまで出題した問題が、提示問題数に達していない場合
    if (currentProblem < totalProblems) {
        
        //次の問題の問題文を表示
        problemText.text = [[problemSet objectAtIndex:currentProblem] getQ];
        lbChoise1.text = [[problemSet objectAtIndex:currentProblem] getChoice:1];
        lbChoise2.text = [[problemSet objectAtIndex:currentProblem] getChoice:2];
        lbChoise3.text = [[problemSet objectAtIndex:currentProblem] getChoice:3];
    //全問題解き終わった場合
    } else {
        
        //結果表示画面へのSegueを始動
        [self performSegueWithIdentifier:@"toResultView" sender:self]; 
    }
}

//結果表示画面へのSegueの発動
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //正答率を算出
    int percentage = (correctAnswers * 100 / totalProblems) ;
    
    //ResultViewController（RVC）のインスタンスを作成し、
    //RVCクラスのメンバー変数である「correctPercentage」に値を渡す
    if ([[segue identifier] isEqualToString:@"toResultView"]) {
        ResultViewController *rvc = (ResultViewController*)[segue destinationViewController];
        rvc.correctPercentage = percentage;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
