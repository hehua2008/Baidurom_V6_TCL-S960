.class public final Lcom/jrdcom/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final JrdBlur:[I = null

.field public static final JrdBlur_blur_alphaMask:I = 0x2

.field public static final JrdBlur_blur_amount:I = 0x0

.field public static final JrdBlur_blur_autoContrast:I = 0xe

.field public static final JrdBlur_blur_autoSaturation:I = 0x11

.field public static final JrdBlur_blur_blackMargin:I = 0x10

.field public static final JrdBlur_blur_dimColor:I = 0x4

.field public static final JrdBlur_blur_drawableMask:I = 0x1

.field public static final JrdBlur_blur_fullScreen:I = 0xc

.field public static final JrdBlur_blur_hint_hasAnythingElseToBlurInSurface:I = 0x6

.field public static final JrdBlur_blur_hint_hasAnythingToBlurInLayer:I = 0x5

.field public static final JrdBlur_blur_hint_hasAnythingToBlurInOtherSurfaces:I = 0x7

.field public static final JrdBlur_blur_hint_needsPerfectInputSynchronization:I = 0x8

.field public static final JrdBlur_blur_hint_refContentId:I = 0x9

.field public static final JrdBlur_blur_invertArea:I = 0xa

.field public static final JrdBlur_blur_invertLayer:I = 0xb

.field public static final JrdBlur_blur_overlayColor:I = 0x3

.field public static final JrdBlur_blur_saturationCoef:I = 0xd

.field public static final JrdBlur_blur_whiteMargin:I = 0xf

.field public static final JrdBlur_panel_blur_amount:I = 0x12

.field public static final JrdBlur_panel_blur_dimColor:I = 0x16

.field public static final JrdBlur_panel_blur_overlayColor:I = 0x13

.field public static final JrdBlur_popup_blur_amount:I = 0x14

.field public static final JrdBlur_popup_blur_dimColor:I = 0x17

.field public static final JrdBlur_popup_blur_overlayColor:I = 0x15

.field public static final WorldClock:[I = null

.field public static final WorldClock_w_dial:I = 0x0

.field public static final WorldClock_w_hand_hour:I = 0x1

.field public static final WorldClock_w_hand_minute:I = 0x2

.field public static final WorldClock_w_hand_second:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jrdcom/internal/R$styleable;->JrdBlur:[I

    .line 830
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jrdcom/internal/R$styleable;->WorldClock:[I

    return-void

    .line 404
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x1t 0x3t
        0x5t 0x0t 0x1t 0x3t
        0x6t 0x0t 0x1t 0x3t
        0x7t 0x0t 0x1t 0x3t
        0x8t 0x0t 0x1t 0x3t
        0x9t 0x0t 0x1t 0x3t
        0xat 0x0t 0x1t 0x3t
        0xbt 0x0t 0x1t 0x3t
        0xct 0x0t 0x1t 0x3t
        0xdt 0x0t 0x1t 0x3t
        0xet 0x0t 0x1t 0x3t
        0xft 0x0t 0x1t 0x3t
        0x10t 0x0t 0x1t 0x3t
        0x11t 0x0t 0x1t 0x3t
        0x12t 0x0t 0x1t 0x3t
        0x13t 0x0t 0x1t 0x3t
        0x14t 0x0t 0x1t 0x3t
        0x15t 0x0t 0x1t 0x3t
        0x16t 0x0t 0x1t 0x3t
        0x17t 0x0t 0x1t 0x3t
        0x18t 0x0t 0x1t 0x3t
        0x19t 0x0t 0x1t 0x3t
        0x1at 0x0t 0x1t 0x3t
        0x1bt 0x0t 0x1t 0x3t
    .end array-data

    .line 830
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x3t
        0x1t 0x0t 0x1t 0x3t
        0x2t 0x0t 0x1t 0x3t
        0x3t 0x0t 0x1t 0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
