.class Lcom/android/jrdsettings/JrdBrightnessPreference$8;
.super Ljava/lang/Object;
.source "JrdBrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/JrdBrightnessPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdBrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference$8;->this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference$8;->this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;

    #getter for: Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->access$400(Lcom/android/jrdsettings/JrdBrightnessPreference;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference$8;->this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;

    #getter for: Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->access$400(Lcom/android/jrdsettings/JrdBrightnessPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
