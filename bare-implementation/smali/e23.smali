.class public final Le23;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Ljava/util/TreeMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le23;->e:Ljava/util/TreeMap;

    .line 7
    .line 8
    const-string v1, "en"

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "de"

    .line 16
    .line 17
    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "it"

    .line 23
    .line 24
    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/Locale;

    .line 30
    .line 31
    const-string v2, "es"

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/util/Locale;

    .line 42
    .line 43
    const-string v2, "pt"

    .line 44
    .line 45
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/util/Locale;

    .line 52
    .line 53
    const-string v2, "da"

    .line 54
    .line 55
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/util/Locale;

    .line 62
    .line 63
    const-string v2, "sv"

    .line 64
    .line 65
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    new-instance v1, Ljava/util/Locale;

    .line 72
    .line 73
    const-string v2, "no"

    .line 74
    .line 75
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance v1, Ljava/util/Locale;

    .line 82
    .line 83
    const-string v2, "nl"

    .line 84
    .line 85
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v1, Ljava/util/Locale;

    .line 92
    .line 93
    const-string v2, "ro"

    .line 94
    .line 95
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/util/Locale;

    .line 102
    .line 103
    const-string v2, "sq"

    .line 104
    .line 105
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/util/Locale;

    .line 112
    .line 113
    const-string v2, "sh"

    .line 114
    .line 115
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v1, Ljava/util/Locale;

    .line 122
    .line 123
    const-string v2, "sk"

    .line 124
    .line 125
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    new-instance v1, Ljava/util/Locale;

    .line 132
    .line 133
    const-string v2, "sl"

    .line 134
    .line 135
    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string v1, "fr"

    .line 142
    .line 143
    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public constructor <init>(Le23;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le23;->d:Z

    .line 6
    .line 7
    iget-object v0, p1, Le23;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Le23;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p1, Le23;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Le23;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v0, p1, Le23;->d:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Le23;->d:Z

    .line 18
    .line 19
    iget-object p1, p1, Le23;->c:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Le23;->c:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le23;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Le23;->d:Z

    .line 31
    iput-object p1, p0, Le23;->a:Ljava/lang/String;

    .line 32
    iget-object p1, p2, Le23;->b:Ljava/lang/String;

    iput-object p1, p0, Le23;->b:Ljava/lang/String;

    .line 33
    iget-boolean p1, p2, Le23;->d:Z

    iput-boolean p1, p0, Le23;->d:Z

    .line 34
    iget-object p1, p2, Le23;->c:Ljava/lang/String;

    iput-object p1, p0, Le23;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Le23;->d:Z

    .line 26
    iput-object p1, p0, Le23;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Le23;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Le23;->c:Ljava/lang/String;

    return-void
.end method
