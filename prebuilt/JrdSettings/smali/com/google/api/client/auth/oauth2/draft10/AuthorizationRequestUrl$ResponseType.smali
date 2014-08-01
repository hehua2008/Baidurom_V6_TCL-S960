.class public final enum Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
.super Ljava/lang/Enum;
.source "AuthorizationRequestUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

.field public static final enum CODE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

.field public static final enum CODE_AND_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

.field public static final enum TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    const-string v1, "CODE"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    .line 69
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    const-string v1, "TOKEN"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    .line 72
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    const-string v1, "CODE_AND_TOKEN"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE_AND_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->CODE_AND_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;

    return-object v0
.end method


# virtual methods
.method public set(Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;->responseType:Ljava/lang/String;

    .line 81
    return-void
.end method
