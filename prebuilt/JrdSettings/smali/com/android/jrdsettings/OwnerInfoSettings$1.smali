.class Lcom/android/jrdsettings/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/jrdsettings/OwnerInfoSettings$1;->this$0:Lcom/android/jrdsettings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/jrdsettings/OwnerInfoSettings$1;->this$0:Lcom/android/jrdsettings/OwnerInfoSettings;

    #getter for: Lcom/android/jrdsettings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/jrdsettings/OwnerInfoSettings;->access$000(Lcom/android/jrdsettings/OwnerInfoSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/jrdsettings/OwnerInfoSettings$1;->this$0:Lcom/android/jrdsettings/OwnerInfoSettings;

    #getter for: Lcom/android/jrdsettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/jrdsettings/OwnerInfoSettings;->access$100(Lcom/android/jrdsettings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    return-void
.end method
