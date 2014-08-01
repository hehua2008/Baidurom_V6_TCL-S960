.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;
.super Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;
.source "GoogleAuthorizationRequestUrl.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHORIZATION_SERVER_URL:Ljava/lang/String; = "https://accounts.google.com/o/oauth2/auth"


# instance fields
.field private accessType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_type"
    .end annotation
.end field

.field private approvalPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "approval_prompt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "https://accounts.google.com/o/oauth2/auth"

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "clientId"
    .parameter "redirectUri"
    .parameter "scope"

    .prologue
    .line 82
    const-string v0, "https://accounts.google.com/o/oauth2/auth"

    invoke-direct {p0, v0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;->redirectUri:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;->scope:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public final getAccessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;->accessType:Ljava/lang/String;

    return-object v0
.end method

.method public final getApprovalPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;->approvalPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;
    .locals 0
    .parameter "accessType"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;->accessType:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setApprovalPrompt(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;
    .locals 0
    .parameter "approvalPrompt"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;->approvalPrompt:Ljava/lang/String;

    .line 109
    return-object p0
.end method
