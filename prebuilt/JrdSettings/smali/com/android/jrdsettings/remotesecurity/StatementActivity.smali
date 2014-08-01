.class public Lcom/android/jrdsettings/remotesecurity/StatementActivity;
.super Landroid/app/Activity;
.source "StatementActivity.java"


# instance fields
.field private btnSignIn:Landroid/widget/Button;

.field private readConfirmed:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/StatementActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->btnSignIn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v8, 0x7f0400b7

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    const v8, 0x7f0b01d8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 30
    .local v4, rsAnnouncement:Landroid/widget/TextView;
    const v8, 0x7f09097b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 31
    .local v0, announcement:Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090967

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v8, 0x7f0b01db

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 33
    .local v6, statement:Landroid/widget/TextView;
    const v8, 0x7f09097c

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 36
    const v8, 0x7f09097d

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 37
    .local v3, privacyAccepted:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, confirmedText:Ljava/lang/String;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 39
    .local v2, lenConfirmed:I
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    .local v5, sp:Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/URLSpan;

    const-string v9, "https://remotesecurity.alcatelonetouch.com/pages/privacy"

    invoke-direct {v8, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-virtual {v5, v8, v9, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 41
    const v8, 0x7f0b01dd

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 42
    .local v7, tvAnoucement:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    const v8, 0x7f0b01dc

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->readConfirmed:Landroid/widget/CheckBox;

    .line 52
    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->readConfirmed:Landroid/widget/CheckBox;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->readConfirmed:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/jrdsettings/remotesecurity/StatementActivity$1;

    invoke-direct {v9, p0}, Lcom/android/jrdsettings/remotesecurity/StatementActivity$1;-><init>(Lcom/android/jrdsettings/remotesecurity/StatementActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    const v8, 0x7f0b01de

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->btnSignIn:Landroid/widget/Button;

    .line 65
    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->btnSignIn:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 66
    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->btnSignIn:Landroid/widget/Button;

    new-instance v9, Lcom/android/jrdsettings/remotesecurity/StatementActivity$2;

    invoke-direct {v9, p0}, Lcom/android/jrdsettings/remotesecurity/StatementActivity$2;-><init>(Lcom/android/jrdsettings/remotesecurity/StatementActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method
