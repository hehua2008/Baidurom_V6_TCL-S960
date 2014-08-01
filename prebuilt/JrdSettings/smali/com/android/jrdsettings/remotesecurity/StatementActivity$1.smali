.class Lcom/android/jrdsettings/remotesecurity/StatementActivity$1;
.super Ljava/lang/Object;
.source "StatementActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/StatementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/StatementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/StatementActivity;->btnSignIn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/jrdsettings/remotesecurity/StatementActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/StatementActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 62
    return-void
.end method
