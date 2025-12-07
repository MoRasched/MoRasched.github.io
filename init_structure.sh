#!/usr/bin/env bash
set -e

echo "Initializing minimal Markdown structure for ASC-ODE Jupyter Book..."

# Root file
FILES=(
  "intro.md"

  # Project overview
  "project/overview.md"
  "project/team.md"
  "project/scope_and_tasks.md"

  # ODE theory & course context
  "theory/ode_basics.md"
  "theory/course_context.md"
  "theory/jupyterbook_mapping.md"

  # Mechanical systems (TODO section)
  "mech/intro.md"
  "mech/mass_spring_model.md"
  "mech/rc_circuit_model.md"
  "mech/pendulum_model.md"
  "mech/energy_and_stability.md"

  # Numerical methods implemented
  "methods/explicit_improved_euler.md"
  "methods/implicit_euler_crank_nicolson.md"
  "methods/electric_network.md"
  "methods/automatic_differentiation.md"
  "methods/runge_kutta.md"

  # Implementation details
  "impl/overview.md"
  "impl/repository_structure.md"
  "impl/cpp_core.md"
  "impl/timestepper_and_newton.md"
  "impl/autodiff_module.md"
  "impl/plots_and_outputs.md"

  # Usage / how to run
  "usage/requirements.md"
  "usage/build_with_cmake.md"
  "usage/running_mass_spring.md"
  "usage/running_electric_network.md"
  "usage/running_autodiff.md"
  "usage/plotting_workflow.md"
  "usage/interpreting_results.md"

  # Numerical results
  "results/mass_spring.md"
  "results/electric_network.md"
  "results/legendre_ad.md"
  "results/summary.md"

  # Appendices
  "appendix/references.md"
  "appendix/tools.md"
  "appendix/changelog.md"
)

for f in "${FILES[@]}"; do
  dir="$(dirname "$f")"
  base="$(basename "$f" .md)"

  # Create directory if needed (ignore for files at root)
  if [ "$dir" != "." ]; then
    mkdir -p "$dir"
  fi

  # Only create file if it does NOT exist
  if [ -f "$f" ]; then
    echo "Skipping existing file: $f"
    continue
  fi

  echo "Creating: $f"
  {
    # Heading from filename (replace _ with space, capitalize first letter)
    heading="$(echo "$base" | tr '_' ' ')"
    heading="$(echo "${heading:0:1}" | tr '[:lower:]' '[:upper:]')${heading:1}"

    echo "# $heading"
    echo
    echo "> TODO: Add detailed content for \`$f\`."
    echo
    echo "_This is a placeholder created to satisfy the Jupyter Book table of contents._"
  } > "$f"
done

echo "Done. You can now run:  jupyter-book build ."