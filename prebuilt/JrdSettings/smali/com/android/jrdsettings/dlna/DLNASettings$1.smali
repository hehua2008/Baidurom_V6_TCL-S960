.class Lcom/android/jrdsettings/dlna/DLNASettings$1;
.super Landroid/os/AsyncTask;
.source "DLNASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/dlna/DLNASettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/dlna/DLNASettings;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    iput-object p2, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #getter for: Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$100(Lcom/android/jrdsettings/dlna/DLNASettings;)Ljrdcom/dlnaservice/DLNAManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #getter for: Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$100(Lcom/android/jrdsettings/dlna/DLNASettings;)Ljrdcom/dlnaservice/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljrdcom/dlnaservice/DLNAManager;->mediaControlSearch(Z)Z

    .line 436
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/dlna/DLNASettings$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #getter for: Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$000(Lcom/android/jrdsettings/dlna/DLNASettings;)Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/ProgressCategory;->setProgress(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->val$item:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 430
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/dlna/DLNASettings$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 421
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #getter for: Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$000(Lcom/android/jrdsettings/dlna/DLNASettings;)Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/ProgressCategory;->setProgress(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings$1;->val$item:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 423
    return-void
.end method
