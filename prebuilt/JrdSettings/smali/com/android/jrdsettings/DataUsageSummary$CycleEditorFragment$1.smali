.class Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/jrdsettings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/jrdsettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2514
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2518
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearFocus()V

    .line 2520
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 2521
    .local v0, cycleDay:I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2522
    .local v1, cycleTimezone:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2523
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v3, 0x1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/jrdsettings/DataUsageSummary;->access$500(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    .line 2524
    return-void
.end method
