.class public final Ls1a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ls1a;

.field public static final c:Ls1a;

.field public static final d:Ls1a;

.field public static final e:Ls1a;

.field public static final f:Ls1a;


# instance fields
.field public final a:Lt1a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1a;

    .line 2
    .line 3
    new-instance v1, Lnh4;

    .line 4
    .line 5
    const/16 v2, 0x15

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lnh4;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ls1a;-><init>(Ly1a;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ls1a;->b:Ls1a;

    .line 14
    .line 15
    new-instance v0, Ls1a;

    .line 16
    .line 17
    new-instance v1, Lq34;

    .line 18
    .line 19
    const/16 v2, 0x18

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lq34;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ls1a;-><init>(Ly1a;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Ls1a;->c:Ls1a;

    .line 28
    .line 29
    new-instance v0, Ls1a;

    .line 30
    .line 31
    new-instance v1, Llv1;

    .line 32
    .line 33
    const/16 v2, 0x1a

    .line 34
    .line 35
    invoke-direct {v1, v2}, Llv1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ls1a;-><init>(Ly1a;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ls1a;

    .line 42
    .line 43
    new-instance v1, Lfk8;

    .line 44
    .line 45
    const/16 v2, 0xa

    .line 46
    .line 47
    invoke-direct {v1, v2}, Lfk8;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Ls1a;-><init>(Ly1a;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ls1a;

    .line 54
    .line 55
    new-instance v1, Lhx0;

    .line 56
    .line 57
    const/16 v2, 0x1a

    .line 58
    .line 59
    invoke-direct {v1, v2}, Lhx0;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ls1a;-><init>(Ly1a;)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Ls1a;->d:Ls1a;

    .line 66
    .line 67
    new-instance v0, Ls1a;

    .line 68
    .line 69
    new-instance v1, Lma2;

    .line 70
    .line 71
    const/16 v2, 0x1d

    .line 72
    .line 73
    invoke-direct {v1, v2}, Lma2;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Ls1a;-><init>(Ly1a;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Ls1a;->e:Ls1a;

    .line 80
    .line 81
    new-instance v0, Ls1a;

    .line 82
    .line 83
    new-instance v1, Lns0;

    .line 84
    .line 85
    const/16 v2, 0x1c

    .line 86
    .line 87
    invoke-direct {v1, v2}, Lns0;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Ls1a;-><init>(Ly1a;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Ls1a;->f:Ls1a;

    .line 94
    .line 95
    return-void
.end method

.method public constructor <init>(Ly1a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpo9;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lz28;

    .line 11
    .line 12
    const/16 v1, 0x16

    .line 13
    .line 14
    invoke-direct {v0, p1, v1}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ls1a;->a:Lt1a;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v0, "java.vendor"

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "The Android Project"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Lln5;

    .line 35
    .line 36
    const/16 v1, 0x12

    .line 37
    .line 38
    invoke-direct {v0, p1, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Ls1a;->a:Lt1a;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljq6;

    .line 45
    .line 46
    const/16 v1, 0x18

    .line 47
    .line 48
    invoke-direct {v0, p1, v1}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ls1a;->a:Lt1a;

    .line 52
    .line 53
    return-void
.end method
