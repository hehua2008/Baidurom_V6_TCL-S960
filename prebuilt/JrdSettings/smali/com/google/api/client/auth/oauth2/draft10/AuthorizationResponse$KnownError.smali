.class public final enum Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;
.super Ljava/lang/Enum;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnownError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

.field public static final enum ACCESS_DENIED:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

.field public static final enum INVALID_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

.field public static final enum INVALID_REQUEST:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

.field public static final enum INVALID_SCOPE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

.field public static final enum REDIRECT_URI_MISMATCH:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

.field public static final enum UNAUTHORIZED_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

.field public static final enum UNSUPPORTED_RESPONSE_TYPE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->INVALID_REQUEST:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    .line 85
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    const-string v1, "INVALID_CLIENT"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->INVALID_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    .line 88
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    const-string v1, "UNAUTHORIZED_CLIENT"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->UNAUTHORIZED_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    .line 91
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    const-string v1, "REDIRECT_URI_MISMATCH"

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->REDIRECT_URI_MISMATCH:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    .line 94
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    const-string v1, "ACCESS_DENIED"

    invoke-direct {v0, v1, v7}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->ACCESS_DENIED:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    .line 97
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    const-string v1, "UNSUPPORTED_RESPONSE_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->UNSUPPORTED_RESPONSE_TYPE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    .line 100
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    const-string v1, "INVALID_SCOPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->INVALID_SCOPE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->INVALID_REQUEST:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->INVALID_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->UNAUTHORIZED_CLIENT:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->REDIRECT_URI_MISMATCH:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->ACCESS_DENIED:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->UNSUPPORTED_RESPONSE_TYPE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->INVALID_SCOPE:Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;
    .locals 1
    .parameter "name"

    .prologue
    .line 76
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;->$VALUES:[Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/auth/oauth2/draft10/AuthorizationResponse$KnownError;

    return-object v0
.end method
