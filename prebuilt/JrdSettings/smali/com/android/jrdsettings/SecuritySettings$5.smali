.class Lcom/android/jrdsettings/SecuritySettings$5;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .parameter "compoundButton"
    .parameter "isCheck"

    .prologue
    .line 552
    const-string v9, "SecuritySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compoundButton="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";isCheck="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    if-eqz p2, :cond_0

    .line 555
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/android/jrdsettings/remotesecurity/StatementActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    .local v6, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v9, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 599
    .end local v6           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 560
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f0400b1

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 562
    .local v7, layoutEmail:Landroid/view/View;
    const v9, 0x7f0b01ca

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 563
    .local v8, rsAccount:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 565
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 566
    .local v3, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v9, "email"

    invoke-virtual {v3, v9}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, email:Ljava/lang/CharSequence;
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const v9, 0x7f0b01cb

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 569
    .local v2, copyEmail:Landroid/widget/Button;
    new-instance v9, Lcom/android/jrdsettings/SecuritySettings$5$1;

    invoke-direct {v9, p0, v4}, Lcom/android/jrdsettings/SecuritySettings$5$1;-><init>(Lcom/android/jrdsettings/SecuritySettings$5;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f090967

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f090978

    new-instance v11, Lcom/android/jrdsettings/SecuritySettings$5$3;

    invoke-direct {v11, p0}, Lcom/android/jrdsettings/SecuritySettings$5$3;-><init>(Lcom/android/jrdsettings/SecuritySettings$5;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f090318

    new-instance v11, Lcom/android/jrdsettings/SecuritySettings$5$2;

    invoke-direct {v11, p0}, Lcom/android/jrdsettings/SecuritySettings$5$2;-><init>(Lcom/android/jrdsettings/SecuritySettings$5;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 597
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
