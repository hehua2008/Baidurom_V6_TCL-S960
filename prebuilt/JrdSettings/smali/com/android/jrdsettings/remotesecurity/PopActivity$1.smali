.class Lcom/android/jrdsettings/remotesecurity/PopActivity$1;
.super Ljava/lang/Object;
.source "PopActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/PopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/PopActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/PopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/PopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/PopActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    return-void
.end method
