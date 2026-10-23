.class public final Lip1;
.super Lp61;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic i:Ljp1;


# direct methods
.method public constructor <init>(Ljp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lip1;->i:Ljp1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final G(Lm61;Lqn5;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lip1;->i:Ljp1;

    .line 2
    .line 3
    iget-object v0, p0, Ljp1;->b:Ljava/util/Stack;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljp1;->c()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Ljp1;->e:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, ","

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v2, p1, Lm61;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Lzm5;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, ":("

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Ljp1;->d:I

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget v1, p0, Ljp1;->d:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :goto_0
    iget p1, p0, Ljp1;->d:I

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    add-int/2addr p1, v0

    .line 58
    iput p1, p0, Ljp1;->d:I

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Ljp1;->e:Z

    .line 62
    .line 63
    invoke-static {p2, p0}, Lc00;->o(Lqn5;Ljp1;)V

    .line 64
    .line 65
    .line 66
    iget p1, p0, Ljp1;->d:I

    .line 67
    .line 68
    sub-int/2addr p1, v0

    .line 69
    iput p1, p0, Ljp1;->d:I

    .line 70
    .line 71
    iget-object p1, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    const-string p2, ")"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_2
    iput-boolean v0, p0, Ljp1;->e:Z

    .line 81
    .line 82
    return-void
.end method
