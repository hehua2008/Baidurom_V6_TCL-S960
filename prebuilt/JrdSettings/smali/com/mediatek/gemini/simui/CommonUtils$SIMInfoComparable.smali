.class public Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/simui/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfoComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I
    .locals 2
    .parameter "sim1"
    .parameter "sim2"

    .prologue
    .line 55
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .end local p1
    check-cast p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;->compare(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v0

    return v0
.end method
