.class public Lcom/nimbusds/jose/proc/JOSEMatcher;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    }
.end annotation


# instance fields
.field private final algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final encs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final jkus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final kids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->classes:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->algs:Ljava/util/Set;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->encs:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getAlgorithms()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->algs:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEncryptionMethods()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->encs:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJOSEClasses()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->classes:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWKURLs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public matches(Lcom/nimbusds/jose/JOSEObject;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->classes:Ljava/util/Set;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Class;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->algs:Ljava/util/Set;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/nimbusds/jose/JOSEObject;->getHeader()Lcom/nimbusds/jose/Header;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/nimbusds/jose/Header;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->encs:Ljava/util/Set;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    instance-of v2, p1, Lcom/nimbusds/jose/JWEObject;

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    return v1

    .line 60
    :cond_4
    move-object v2, p1

    .line 61
    check-cast v2, Lcom/nimbusds/jose/JWEObject;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    instance-of v0, p1, Lcom/nimbusds/jose/JWSObject;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/nimbusds/jose/JWSObject;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSHeader;->getJWKURL()Ljava/net/URI;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_1

    .line 99
    :cond_6
    instance-of v0, p1, Lcom/nimbusds/jose/JWEObject;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    move-object v0, p1

    .line 104
    check-cast v0, Lcom/nimbusds/jose/JWEObject;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader;->getJWKURL()Ljava/net/URI;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_1

    .line 115
    :cond_7
    move-object v0, v2

    .line 116
    :goto_1
    iget-object v3, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    .line 117
    .line 118
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_8

    .line 123
    .line 124
    return v1

    .line 125
    :cond_8
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    .line 126
    .line 127
    if-eqz v0, :cond_b

    .line 128
    .line 129
    instance-of v0, p1, Lcom/nimbusds/jose/JWSObject;

    .line 130
    .line 131
    if-eqz v0, :cond_9

    .line 132
    .line 133
    check-cast p1, Lcom/nimbusds/jose/JWSObject;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    goto :goto_2

    .line 144
    :cond_9
    instance-of v0, p1, Lcom/nimbusds/jose/JWEObject;

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    check-cast p1, Lcom/nimbusds/jose/JWEObject;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    .line 159
    .line 160
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    return p0

    .line 165
    :cond_b
    const/4 p0, 0x1

    .line 166
    return p0
.end method
