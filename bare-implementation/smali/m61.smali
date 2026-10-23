.class public Lm61;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final b:Lm61;

.field public static final c:Lm61;

.field public static final d:Lm61;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm61;

    .line 2
    .line 3
    const-string v1, "[MIN_NAME]"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lm61;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lm61;->b:Lm61;

    .line 9
    .line 10
    new-instance v0, Lm61;

    .line 11
    .line 12
    const-string v1, "[MAX_KEY]"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lm61;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lm61;->c:Lm61;

    .line 18
    .line 19
    new-instance v0, Lm61;

    .line 20
    .line 21
    const-string v1, ".priority"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lm61;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lm61;->d:Lm61;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm61;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Ljava/lang/String;)Lm61;
    .locals 2

    .line 1
    invoke-static {p0}, Lzm5;->H(Ljava/lang/String;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ll61;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {v1, p0, v0}, Ll61;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    const-string v0, ".priority"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lm61;->d:Lm61;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string v0, "/"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    invoke-static {v0}, Lzm5;->s(Z)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lm61;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lm61;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method


# virtual methods
.method public final a(Lm61;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lm61;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "[MIN_NAME]"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, -0x1

    .line 14
    if-nez v3, :cond_b

    .line 15
    .line 16
    iget-object v3, p1, Lm61;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v5, "[MAX_KEY]"

    .line 19
    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v6, 0x1

    .line 32
    if-nez v2, :cond_a

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    instance-of v2, p0, Ll61;

    .line 42
    .line 43
    if-eqz v2, :cond_8

    .line 44
    .line 45
    instance-of v2, p1, Ll61;

    .line 46
    .line 47
    if-eqz v2, :cond_b

    .line 48
    .line 49
    check-cast p0, Ll61;

    .line 50
    .line 51
    check-cast p1, Ll61;

    .line 52
    .line 53
    iget p1, p1, Ll61;->e:I

    .line 54
    .line 55
    iget p0, p0, Ll61;->e:I

    .line 56
    .line 57
    if-ge p0, p1, :cond_3

    .line 58
    .line 59
    move p0, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-ne p0, p1, :cond_4

    .line 62
    .line 63
    move p0, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    move p0, v6

    .line 66
    :goto_0
    if-nez p0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ge p0, p1, :cond_5

    .line 77
    .line 78
    return v4

    .line 79
    :cond_5
    if-ne p0, p1, :cond_6

    .line 80
    .line 81
    return v0

    .line 82
    :cond_6
    return v6

    .line 83
    :cond_7
    return p0

    .line 84
    :cond_8
    instance-of p0, p1, Ll61;

    .line 85
    .line 86
    if-eqz p0, :cond_9

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0

    .line 94
    :cond_a
    :goto_1
    return v6

    .line 95
    :cond_b
    :goto_2
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lm61;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lm61;->a(Lm61;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lm61;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    if-ne p0, p1, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lm61;

    .line 12
    .line 13
    iget-object p0, p0, Lm61;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lm61;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lm61;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChildKey(\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lm61;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "\")"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
