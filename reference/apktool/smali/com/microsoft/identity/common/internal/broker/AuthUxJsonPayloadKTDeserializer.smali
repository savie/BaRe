.class public final Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayloadKTDeserializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "correlationID"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lqj4;->o()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object p1, p2

    .line 29
    :goto_0
    if-eqz p1, :cond_6

    .line 30
    .line 31
    const-string v0, "action_name"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lqj4;->o()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v0, p2

    .line 45
    :goto_1
    if-eqz v0, :cond_5

    .line 46
    .line 47
    const-string v1, "action_component"

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Lqj4;->o()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v1, p2

    .line 61
    :goto_2
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const-string v2, "params"

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    const-class p2, Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 72
    .line 73
    invoke-virtual {p3, p0, p2}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    move-object p2, p0

    .line 78
    check-cast p2, Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 79
    .line 80
    :cond_3
    new-instance p0, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;

    .line 81
    .line 82
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/AuthUxParams;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_4
    new-instance p0, Lgl4;

    .line 87
    .line 88
    const-string p1, "action_component is required and cannot be null"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_5
    new-instance p0, Lgl4;

    .line 95
    .line 96
    const-string p1, "action_name is required and cannot be null"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_6
    new-instance p0, Lgl4;

    .line 103
    .line 104
    const-string p1, "correlationID is required and cannot be null"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method
