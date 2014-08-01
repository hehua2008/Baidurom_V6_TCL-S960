.class Lcom/android/jrdsettings/wifi/WifiDialog$1;
.super Ljava/util/TimerTask;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WifiDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiDialog$1;->this$0:Lcom/android/jrdsettings/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiDialog$1;->this$0:Lcom/android/jrdsettings/wifi/WifiDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WifiDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WifiDialog;->access$000(Lcom/android/jrdsettings/wifi/WifiDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 129
    return-void
.end method
