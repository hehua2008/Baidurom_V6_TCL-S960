.class public Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
.super Ljava/lang/Object;
.source "GsmAuthenticationResultImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/GsmAuthenticationResult;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKc:J

.field private mSres:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl$1;

    invoke-direct {v0}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl$1;-><init>()V

    sput-object v0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mSres:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mKc:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mSres:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mKc:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mSres:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mKc:J

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getKc()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mKc:J

    return-wide v0
.end method

.method public getSres()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mSres:I

    return v0
.end method

.method public setKc(J)V
    .locals 0
    .parameter "Kc"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mKc:J

    .line 66
    return-void
.end method

.method public setSres(I)V
    .locals 0
    .parameter "Sres"

    .prologue
    .line 52
    iput p1, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mSres:I

    .line 53
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 74
    iget v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mSres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-wide v0, p0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->mKc:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    return-void
.end method
