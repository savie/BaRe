.class public Loc4$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loc4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lno6;
    name = "CSV"
.end annotation


# instance fields
.field private a:Z
    .annotation runtime Lat2;
        name = "AllowQuotedRecordDelimiter"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/Character;
    .annotation runtime Lat2;
        name = "Comments"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/Character;
    .annotation runtime Lat2;
        name = "FieldDelimiter"
        required = false
    .end annotation
.end field

.field private d:Loc4$c;
    .annotation runtime Lat2;
        name = "FileHeaderInfo"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/Character;
    .annotation runtime Lat2;
        name = "QuoteCharacter"
        required = false
    .end annotation
.end field

.field private f:Ljava/lang/Character;
    .annotation runtime Lat2;
        name = "QuoteEscapeCharacter"
        required = false
    .end annotation
.end field

.field private g:Ljava/lang/Character;
    .annotation runtime Lat2;
        name = "RecordDelimiter"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/Character;Ljava/lang/Character;Loc4$c;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Loc4$a;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Loc4$a;->b:Ljava/lang/Character;

    .line 7
    .line 8
    iput-object p3, p0, Loc4$a;->c:Ljava/lang/Character;

    .line 9
    .line 10
    iput-object p4, p0, Loc4$a;->d:Loc4$c;

    .line 11
    .line 12
    iput-object p5, p0, Loc4$a;->e:Ljava/lang/Character;

    .line 13
    .line 14
    iput-object p6, p0, Loc4$a;->f:Ljava/lang/Character;

    .line 15
    .line 16
    iput-object p7, p0, Loc4$a;->g:Ljava/lang/Character;

    .line 17
    .line 18
    return-void
.end method
