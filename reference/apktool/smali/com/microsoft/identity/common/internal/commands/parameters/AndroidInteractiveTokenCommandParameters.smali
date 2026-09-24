.class public final Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;
.super Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final transient activity:Landroid/app/Activity;

.field private final signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$200(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->access$300(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 2
    .line 3
    return-object p0
.end method

.method public static builder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final canEqual(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    return v2

    .line 21
    :cond_2
    iget-object p1, v1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 24
    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_4

    .line 35
    .line 36
    :goto_0
    return v2

    .line 37
    :cond_4
    return v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSignInWithGoogleCredential()Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3b

    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/16 p0, 0x2b

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    :goto_0
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public final toBuilder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
