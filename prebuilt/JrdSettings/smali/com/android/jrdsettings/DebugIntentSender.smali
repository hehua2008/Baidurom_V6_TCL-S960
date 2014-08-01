.class public Lcom/android/jrdsettings/DebugIntentSender;
.super Landroid/app/Activity;
.source "DebugIntentSender.java"


# instance fields
.field private mAccountField:Landroid/widget/EditText;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mDataField:Landroid/widget/EditText;

.field private mIntentField:Landroid/widget/EditText;

.field private mResourceField:Landroid/widget/EditText;

.field private mSendBroadcastButton:Landroid/widget/Button;

.field private mStartActivityButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/jrdsettings/DebugIntentSender$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DebugIntentSender$1;-><init>(Lcom/android/jrdsettings/DebugIntentSender;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mAccountField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mResourceField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 72
    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    const-string v1, "android.intent.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 76
    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    const v1, 0x1080018

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mAccountField:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0b00d8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mResourceField:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f0b00d9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/jrdsettings/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0b00da

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/android/jrdsettings/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/jrdsettings/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
