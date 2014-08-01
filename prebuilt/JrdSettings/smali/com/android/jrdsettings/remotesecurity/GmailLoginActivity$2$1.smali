.class Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2$1;
.super Ljava/lang/Object;
.source "GmailLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;

    iget-object v0, v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 244
    return-void
.end method
