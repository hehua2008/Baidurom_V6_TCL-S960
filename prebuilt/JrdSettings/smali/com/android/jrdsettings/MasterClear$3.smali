.class Lcom/android/jrdsettings/MasterClear$3;
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
    .line 221
    iput-object p1, p0, Lcom/android/jrdsettings/MasterClear$3;->this$0:Lcom/android/jrdsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClear$3;->this$0:Lcom/android/jrdsettings/MasterClear;

    #getter for: Lcom/android/jrdsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/jrdsettings/MasterClear;->access$300(Lcom/android/jrdsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 226
    return-void
.end method
