.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitEditorFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method public constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 394
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 395
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .line 398
    .local v6, target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 401
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040037

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 402
    .local v8, view:Landroid/view/View;
    const v9, 0x7f0b0067

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 403
    .local v1, bytesPicker:Landroid/widget/NumberPicker;
    iget-object v9, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v9}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v4

    .line 404
    .local v4, limitBytes:J
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 405
    invoke-virtual {v1, v11}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 407
    const-wide/32 v9, 0x100000

    div-long v9, v4, v9

    long-to-int v9, v9

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 408
    invoke-virtual {v1, v11}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 409
    const v9, 0x7f0b0039

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 410
    .local v7, text:Landroid/widget/TextView;
    const v9, 0x7f090132

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 412
    const v9, 0x7f09089b

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 413
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 414
    const v9, 0x7f090898

    new-instance v10, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;

    invoke-direct {v10, p0, v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method
