.class public Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
.super Ljava/lang/Object;
.source "AkaAuthenticationResultImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/AkaAuthenticationResult;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCk:[B

.field private mIk:[B

.field private mRes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl$1;

    invoke-direct {v0}, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl$1;-><init>()V

    sput-object v0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mCk:[B

    .line 25
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mIk:[B

    .line 26
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mRes:[B

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/high16 v1, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mCk:[B

    .line 25
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mIk:[B

    .line 26
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mRes:[B

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mCk:[B

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mIk:[B

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mRes:[B

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getCk()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mCk:[B

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mIk:[B

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mRes:[B

    return-object v0
.end method

.method public setCk([B)V
    .locals 0
    .parameter "Ck"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mCk:[B

    .line 46
    return-void
.end method

.method public setIk([B)V
    .locals 0
    .parameter "Ik"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mIk:[B

    .line 55
    return-void
.end method

.method public setRes([B)V
    .locals 0
    .parameter "res"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mRes:[B

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mCk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    iget-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mIk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    iget-object v0, p0, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->mRes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    return-void
.end method
