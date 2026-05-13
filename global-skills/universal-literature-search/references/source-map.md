# Source Map

## Source priority by discipline

### Medicine, clinical, biomedical

Preferred order:

1. PubMed and publisher abstract pages
2. Major journal pages and DOI landing pages
3. Systematic reviews, guidelines, and registry-linked studies
4. Preprints only as provisional evidence

Search pattern examples:

- `"topic" site:pubmed.ncbi.nlm.nih.gov`
- `"topic" randomized trial`
- `"topic" systematic review meta-analysis`
- `"topic" guideline`

### Computer science, AI, machine learning

Preferred order:

1. Official conference or journal pages
2. arXiv abstract pages
3. Publisher pages
4. Project pages or repositories for implementation context

Search pattern examples:

- `"topic" arXiv`
- `"topic" NeurIPS OR ICML OR ICLR OR CVPR OR ACL`
- `"topic" benchmark`
- `"topic" survey`

### Biology, neuroscience

Preferred order:

1. PubMed
2. Publisher pages and DOI records
3. Review papers
4. Preprints with clear caveats

Search pattern examples:

- `"topic" site:pubmed.ncbi.nlm.nih.gov`
- `"topic" review`
- `"topic" cohort OR assay OR imaging`

### Economics, psychology, education, social science

Preferred order:

1. Journal pages and DOI records
2. RePEc, NBER, SSRN, institutional working paper series when appropriate
3. Review papers and handbooks

Search pattern examples:

- `"topic" working paper`
- `"topic" difference-in-differences`
- `"topic" review`
- `"topic" meta-analysis`

### Law, regulation, policy

Preferred order:

1. Statute or regulation text
2. Case law or official guidance
3. Law review articles or policy analysis

Search pattern examples:

- `"topic" law review`
- `"topic" regulation`
- `"topic" official guidance`

## Query construction

Build queries from:

- core concept
- synonyms and abbreviations
- population or domain
- task or outcome
- method or study type
- timeframe if the user asks for recent work

Example template:

`(core concept OR synonym A OR synonym B) AND (population OR domain) AND (outcome OR method)`

## Screening checklist

- Is the source primary, secondary, or commentary?
- Is the date appropriate for the user's request?
- Is the field and population actually relevant?
- Is the evidence strong enough for the claim?
- Are there confounders, sample limits, or obvious replication issues?

## Output template

Use a compact table or bullets with:

- title
- year
- source or venue
- study type
- relevance
- caveat

