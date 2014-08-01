.class Lcom/android/jrdsettings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/jrdsettings/MasterClear$2;->this$0:Lcom/android/jrdsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClear$2;->this$0:Lcom/android/jrdsettings/MasterClear;

    #getter for: Lcom/android/jrdsettings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/jrdsettings/MasterClear;->access$200(Lcom/android/jrdsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 207
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClear$2;->this$0:Lcom/android/jrdsettings/MasterClear;

    #getter for: Lcom/android/jrdsettings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/jrdsettings/MasterClear;->access$200(Lcom/android/jrdsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "persist.sys.saveInStorage"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "persist.sys.saveInStorage"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
