.class Lcom/android/jrdsettings/wifi/WpsDialog$3$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WpsDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/wifi/WpsDialog$3;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WpsDialog$3;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$3$1;->this$1:Lcom/android/jrdsettings/wifi/WpsDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$3$1;->this$1:Lcom/android/jrdsettings/wifi/WpsDialog$3;

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WpsDialog$3;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$300(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 184
    return-void
.end method
