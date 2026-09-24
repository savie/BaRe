.class public final Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;


# instance fields
.field private final field:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

.field private final throwIfInvalid:Lqt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqt3;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->Companion:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/fido/FidoRequestField;",
            "TK;",
            "Lqt3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->field:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->value:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->throwIfInvalid:Lqt3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->field:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->field:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->value:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->value:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->throwIfInvalid:Lqt3;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->throwIfInvalid:Lqt3;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final getOrThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->field:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->value:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->throwIfInvalid:Lqt3;

    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->field:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->value:Ljava/lang/Object;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->throwIfInvalid:Lqt3;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FidoChallengeField(field="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->field:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", value="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->value:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", throwIfInvalid="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->throwIfInvalid:Lqt3;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
